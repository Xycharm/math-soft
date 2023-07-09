# 从dimension.txt文件中读取长轴、短轴和高轴的数据
long_axis = system("cat dimension.txt | head -n 1")
short_axis = system("cat dimension.txt | awk 'NR==2'")
height_axis = system("cat dimension.txt | tail -n 1")

# 设置gnuplot绘图选项
set terminal pdf
set output "your_generated_pdf.pdf"

# 绘制三维椭圆
set parametric
set urange [0:2*pi]
set vrange [0:pi]
set isosample 40, 20
splot long_axis*cos(u)*sin(v), short_axis*sin(u)*sin(v), height_axis*cos(v) with lines notitle

# 清除临时变量
unset parametric
unset urange
unset vrange
unset isosample

