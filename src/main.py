# main.py

import cadquery as cq

def main():
    # Create a simple CadQuery object
    result = cq.Workplane("XY").box(1, 2, 3)

    # Export the result to a file (e.g., STEP format)
    cq.exporters.export(result, 'output.step')

if __name__ == "__main__":
    main()