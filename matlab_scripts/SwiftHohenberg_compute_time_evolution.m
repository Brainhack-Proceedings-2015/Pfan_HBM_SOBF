%% Code modified from http://nile.physics.ncsu.edu/hon292a-f08/
clear all; clc;
%%
epsilon=0.02;
g=0;
ko=1;

%global stop;
stop=0;

L=20*pi;
N=256;
a0=sqrt(4*epsilon/3);
noise = 1e-1;

t=0;
dt=0.03/epsilon;

%Setting up the initial condition
rk = zeros(N);

% --- INITIAL CONDITION 0: RANDOM MATRIX
U=noise*randn(N);
Ut=[t log(max(max(abs(U)))) log(a0)];

% Solving the problem in the Fourier domain
q=zeros(N,1);
for k=1:N
    q(k)=(2*(k-1)/N-1)*pi*N/L;
end
Q=U;
for k=1:N
    for l=1:N
        Q(k,l)=1/(1-dt*(epsilon-(ko^2-(q(k)^2+q(l)^2))^2));
    end
end

%%
n = 0;
cnt = 0;
        
while(cnt < 1)
    n=n+1;
    u=fftshift(fft2(U));
    t=t+dt;
    u=u.*Q;
    U=real(ifft2(ifftshift(u)));
    U=U+dt*(g*U.^2-U.^3);
    %  dt=min(0.1,0.1/(max(max(abs(U))))^3);
    
    Ut=[Ut;t log(max(max(abs(U)))) log(a0)];
    
    if(n == 800)
        cnt = cnt+1;
        
        subplot(1,3,1)
        imagesc(U);
        if n == 800;
           U_1 = U;
        end;   
        axis off
        axis equal
        R(:,:,cnt)=U;
        K(:,:,cnt)=u;
    end
    
end

%%

epsilon=1;
g=0;
ko=1;

%global stop;
stop=0;

L=20*pi;
N=256;
a0=sqrt(4*epsilon/3);
noise = 1e-1;

t=0;
dt=0.03/epsilon;

%Setting up the initial condition
rk = zeros(N);

% --- INITIAL CONDITION 0: RANDOM MATRIX
U=noise*randn(N);
Ut=[t log(max(max(abs(U)))) log(a0)];

% Solving the problem in the Fourier domain
q=zeros(N,1);
for k=1:N
    q(k)=(2*(k-1)/N-1)*pi*N/L;
end
Q=U;
for k=1:N
    for l=1:N
        Q(k,l)=1/(1-dt*(epsilon-(ko^2-(q(k)^2+q(l)^2))^2));
    end
end

%%
n = 0;
cnt = 0;
        
while(cnt < 1)
    n=n+1;
    u=fftshift(fft2(U));
    t=t+dt;
    u=u.*Q;
    U=real(ifft2(ifftshift(u)));
    U=U+dt*(g*U.^2-U.^3);
    %  dt=min(0.1,0.1/(max(max(abs(U))))^3);
    
    Ut=[Ut;t log(max(max(abs(U)))) log(a0)];
    
    if(n == 800)
        cnt = cnt+1;
        
        subplot(1,3,2)
        imagesc(U);
        if n == 800;
           U_2 = U;
        end;   
        axis off
        axis equal
        R(:,:,cnt)=U;
        K(:,:,cnt)=u;
    end
    
end

%%

epsilon=75;
g=0;
ko=1;

%global stop;
stop=0;

L=20*pi;
N=256;
a0=sqrt(4*epsilon/3);
noise = 1e-1;

t=0;
dt=0.03/epsilon;

%Setting up the initial condition
rk = zeros(N);

% --- INITIAL CONDITION 0: RANDOM MATRIX
U=noise*randn(N);
Ut=[t log(max(max(abs(U)))) log(a0)];

% Solving the problem in the Fourier domain
q=zeros(N,1);
for k=1:N
    q(k)=(2*(k-1)/N-1)*pi*N/L;
end
Q=U;
for k=1:N
    for l=1:N
        Q(k,l)=1/(1-dt*(epsilon-(ko^2-(q(k)^2+q(l)^2))^2));
    end
end

%%
n = 0;
cnt = 0;
        
while(cnt < 1)
    n=n+1;
    u=fftshift(fft2(U));
    t=t+dt;
    u=u.*Q;
    U=real(ifft2(ifftshift(u)));
    U=U+dt*(g*U.^2-U.^3);
    %  dt=min(0.1,0.1/(max(max(abs(U))))^3);
    
    Ut=[Ut;t log(max(max(abs(U)))) log(a0)];
    
    if(n == 800)
        cnt = cnt+1;
        
        subplot(1,3,3)
        imagesc(U);
        if n == 800;
           U_3 = U;
        end;   
        axis off
        axis equal
        R(:,:,cnt)=U;
        K(:,:,cnt)=u;
    end
    
end

drawnow
fprintf('Done.\n');

save simulation_data_branchiness