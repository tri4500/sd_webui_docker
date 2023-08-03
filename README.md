Thư mục webui-user.sh:

export COMMANDLINE_ARGS=""

Thêm các arg vào như sau:

- -- lowvram : Nếu GPU dưới 8GB vram
- -- share: Nếu muốn tự động tạo 1 public link cho webui
- --skip-torch-cuda-test: Nếu container không dùng được GPU
