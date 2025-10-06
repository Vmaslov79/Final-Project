import socket
from http.server import BaseHTTPRequestHandler, HTTPServer
class SimpleHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        if self.path == '/':
            self.send_response(200)
            self.end_headers()
            self.wfile.write(b'OK1')
        else:
            self.send_response(404)
            self.end_headers()
def get_pod_ip():
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    try:
        s.connect(('10.40.10.10', 1))
        ip = s.getsockname()[0]
    except Exception:
        ip = '127.0.0.1'
    finally:
        s.close()
    return ip

if __name__ == '__main__':
    pod_ip = get_pod_ip()
    print(f"Pod IP address: {pod_ip}")
    server = HTTPServer(('0.0.0.0', 8080), SimpleHandler)
    print("Server running on port 8080...")
    server.serve_forever()
