model PID
    Real x_1, x_2;
    constant Real kP=1, kI=0, kD=1, N=10;
    input Real u;
    output Real y;
equation
    der(x_1) = x_2;
    der(x_2) = -N*x_2 + 1;
    y = (kI - kD*N^2)*x_1 + kI*x_2 + (kP + kD*N)*u;
end PID;

model Rocket
    input Real delta;
    output Real x, z, theta, v_x, v_z, q;
    constant Real m=1, l=1, g=9.8, J=1, T=100;
equation
    der(x) = v_x;
    der(z) = v_z;
    der(theta) = q;
    der(v_x) = T/m*cos(theta - delta);
    der(v_z) = T/m*sin(theta - delta) + g;
    der(q) = T*l/J*sin(delta);
end Rocket;

model Sim
    Rocket rocket;
    PID pid;
    input Real noise;
    parameter Real theta_cmd = 1.57;
equation
    pid.y = rocket.delta;
    pid.u = theta_cmd - rocket.theta + noise;
end Sim;
