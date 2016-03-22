function plot_data(i,j,d,x,marginleft,marginright)



df = DataFrame(DeltaAcc=x)

#Geom.histogram(bincount=20
p=plot(df, x=:DeltaAcc,  xintercept=[-0.01, 0.01],Geom.vline(color="orange", size=1mm), Geom.density,Coord.Cartesian(xmin=marginleft,xmax=marginright),Theme(major_label_font_size=13pt,minor_label_font_size=12pt,key_label_font_size=11pt))

draw(PDF("Plots/hist$i$j$d.pdf", 6inch, 3inch), p)

return p

end
