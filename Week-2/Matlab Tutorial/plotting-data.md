# Plotting data in Matlab

## sine function
Consider you have a vector t:

    t = [0:0.01:0.98]

Define a function y1 as follows:

    y1 = sin(2*pi*4*t)

The graph of t vs y1 can be plotted using the command:

    plot(t, y1)

The resulting plot is as shown in the figure below:

![Plot t v/s y1](https://user-images.githubusercontent.com/16982762/73666719-16b13500-4658-11ea-884c-d26c1c333010.PNG)

The horizontal axis shows the variable t and the vertical axis is the function we defined.

## cosine function

Similarly, Define a function y1 as follows:

    y2 = cos(2*pi*4*t)

The graph of t vs y1 can be plotted using the command:

    plot(t, y2)

The resulting plot is as shown in the figure below:

![t vs y2](https://user-images.githubusercontent.com/16982762/73667386-0d749800-4659-11ea-9d98-36739929be16.PNG)

The cosine function is the inverted form of the sine function we defined earlier.

## Two functions on the same plot

Considering we have the above two functions defined y1 and y2, both the functions can be plotted on the same graph using the commands below:

    plot(t, y1)
    hold on
    plot(t, y2,'r') % plot in a different color

The hold on statement plots the new plots on the old one.

Following is the output of the above commands:

![t vs y1 and t vs y2](https://user-images.githubusercontent.com/16982762/73668067-25005080-465a-11ea-9dd3-1bcebd99ce1d.PNG)

### Additional functions

You can add legends, titles and labels for the X and Y axes using the following commands:

**1. Labels**

        xlabel('time')
        ylabel('value')

**2. Title**
    
        title('Time vs Value Plot')

**3. Legends**
    
        legend('sin', cos)

![Legends, Labels, Title](https://user-images.githubusercontent.com/16982762/73668650-00f13f00-465b-11ea-9c7a-49958293b107.PNG)

**4. Setting the Scale**

You can set the scale for the X and Y axes:

    axis([0.5 1 -1 1])

Here, the scale of the X axis is set from 0.5 to 1 and that of the Y axis from -1 to 1

## Utility Functions

**1. Save**

You can save all your plots using the following command:

        print -dpng "<filename>.png"

**2. Close**

        close

Using this command, the figure currently being displayed will disappear.

**3. Open multiple Figures**

At a time, Matlab opens only the current figure. To plot multiple figures, you can number the figures.

        figure(1); plot(t, y1);
        figure(2); plot(t, y2);

**4. Clear a figure**

    clf

## Sub-plots

You can have multiple different plots in a single figure.

    subplot(1, 2, 1)

This command creates a 1x2 grid and currently accesses the first element.

    plot(t, y1)

This will plot in the first element

    subplot(1,2,2)

The above command accesses the second element of the figure

    plot(t, y2)

The above command plots in the second figure.

The resulting plot is as follows:

![fig-5](https://user-images.githubusercontent.com/16982762/73670494-292e6d00-465e-11ea-87f7-bfbda4d09124.PNG)

## Visualising a Matrix

Let's say we have a 5x5 matrix:

    A = magic(5)
    imagesc(A)

The imagesc command will create 5x5 grid of colors corresponding to the matrix A.

![fig-6](https://user-images.githubusercontent.com/16982762/73671119-3c8e0800-465f-11ea-9539-07ef9ef33a3c.PNG)

### Color Bar

A color bar can be obtained using the following command:

    imagesc(A)
    colorbar

![fig-7](https://user-images.githubusercontent.com/16982762/73671338-9989be00-465f-11ea-9441-e2de518ae715.PNG)

### Gray scale

You can use the following command to get a matrix in gray scale. You can couple it with colorbar to get a color bar on the figure.

    imagesc(A)
    colorbar
    colormap gray

You can do this by *comma chaining* of commands/function calls, i.e. adding multiple commands one after the other seperated by comma.

    imagesc(A), colorbar, colormap gray

![fig-8](https://user-images.githubusercontent.com/16982762/73671514-f4bbb080-465f-11ea-869c-1385072c4af5.PNG)