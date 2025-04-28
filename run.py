import sys
import io
from main import main

def runner():
    if len(sys.argv) < 2:
        print("Usage: python run <case_number>")
        sys.exit(1)

    for path in sys.argv[1:]:
        print(f"=== {path} ===")
        with open(path, "r") as f:
            data = f.read()
        sys.stdin = io.StringIO(data)
        
        try:
            main()
        except Exception as e:
            print(f"Error: {e}", file=sys.stderr)
        print()
            
if __name__ == "__main__":
    runner()
