clear
clc
disp('AQUI EMPIEZA')

cont_loop = 0;   % CONTROLA EL CICLO " while "
num_shape = 1; % CONTROLA LA CANTIDAD DE POLIGONOS EN LA MATRIZ DE ESTADO

%M_Fig = NaN(13,2*21);

% M_Fig = chooseShape(M_Fig);

tic;    
Area = putShape()   
toc;


function[X,Y] = shape(columna,M)

diM_fig=size(M);
X = [];
Y = [];

for i=1:diM_fig(1)
    
    if ~isnan(M(i,2*columna-1))
        X(i) =  M(i,2*columna-1);
        Y(i) =  M(i,2*columna);
    end
end

end

function [M2,colm, Fig_Falt] = chooseShape(M2,s,x,y,Fig_Falt) 


m = 1:1:21;
xf = x;
yf = y;

op1 = randi([0 1],1,1); % ESTOS FACTORES REALIZAN OPERACIONES DE REFLEXION EN "x" Y "y" E INVERSION EN VERTICES
op2 = randi([0 1],1,1); %

count_fig_falt = 1;

while count_fig_falt >= 1
    
    count_fig_falt = 0;
    colm = m(randi([1 length(m)],1,1));   % ESCOGE UNA COLUMNA IMPAR DE LA MATRIZ DE POLIGONOS
    
    for i = 1:length(Fig_Falt(s,:))        
       if colm == Fig_Falt(s,i)
           count_fig_falt = count_fig_falt+1;
       end
    end
end

switch colm % SE INICIALIZA LA MATRIZ DE POLIGONOS EN "xf" Y "yf"
    
    case 1    
    
    % PIEZA 1    
    
    M2(1,1) = xf;
    M2(2,1) = xf+((-1)^op1)*2;
    M2(3,1) = xf+((-1)^op1)*2;
    M2(4,1) = xf;
    M2(5,1) = xf;

    M2(1,2) = yf;
    M2(2,2) = yf;
    M2(3,2) = yf-((-1)^op2)*2;
    M2(4,2) = yf-((-1)^op2)*2;
    M2(5,2) = yf;

    
    case 2

    %%% PIEZA 2

    M2(1,3) = xf;
    M2(2,3) = xf+((-1)^op1)*5;
    M2(3,3) = xf+((-1)^op1)*5;
    M2(4,3) = xf;
    M2(5,3) = xf;


    M2(1,4) = yf;
    M2(2,4) = yf;
    M2(3,4) = yf-((-1)^op2)*1;
    M2(4,4) = yf-((-1)^op2)*1;
        M2(5,4) = yf;

    case 3

    %%% PIEZA 3

    M2(1,5) = xf;
    M2(2,5) = xf+((-1)^op1)*4;
    M2(3,5) = xf+((-1)^op1)*4;
    M2(4,5) = xf+((-1)^op1)*3;
    M2(5,5) = xf+((-1)^op1)*3;
    M2(6,5) = xf;
        M2(7,5) = xf;


    M2(1,6) = yf;
    M2(2,6) = yf;
    M2(3,6) = yf-((-1)^op2)*2;
    M2(4,6) = yf-((-1)^op2)*2;
    M2(5,6) = yf-((-1)^op2)*1;
    M2(6,6) = yf-((-1)^op2)*1;
        M2(7,6) = yf;

    
     case 4

    %%% PIEZA 4

    M2(1,7) = xf;
    M2(2,7) = xf+((-1)^op1)*1;
    M2(3,7) = xf+((-1)^op1)*1;
    M2(4,7) = xf;
        M2(5,7) = xf;


    M2(1,8) = yf;
    M2(2,8) = yf;
    M2(3,8) = yf-((-1)^op2)*2;
    M2(4,8) = yf-((-1)^op2)*2;
        M2(5,8) = yf;

    
     case 5

    %%% PIEZA 5

    M2(1,9) = xf;
    M2(2,9) = xf+((-1)^op1)*3;
    M2(3,9) = xf+((-1)^op1)*3;
    M2(4,9) = xf+((-1)^op1)*4;
    M2(5,9) = xf+((-1)^op1)*4;
    M2(6,9) = xf+((-1)^op1)*2;
    M2(7,9) = xf+((-1)^op1)*2;
    M2(8,9) = xf;
        M2(9,9) = xf;


    M2(1,10) = yf;
    M2(2,10) = yf;
    M2(3,10) = yf-((-1)^op2)*1;
    M2(4,10) = yf-((-1)^op2)*1;
    M2(5,10) = yf-((-1)^op2)*2;
    M2(6,10) = yf-((-1)^op2)*2;
    M2(7,10) = yf-((-1)^op2)*1;
    M2(8,10) = yf-((-1)^op2)*1;
        M2(9,10) = yf;

     case 6

%%% PIEZA 6

    M2(1,11) = xf;
    M2(2,11) = xf+((-1)^op1)*1;
    M2(3,11) = xf+((-1)^op1)*1;
    M2(4,11) = xf-((-1)^op1)*1;
    M2(5,11) = xf-((-1)^op1)*1;
    M2(6,11) = xf;
    M2(7,11) = xf;

    M2(1,12) = yf;
    M2(2,12) = yf;
    M2(3,12) = yf-((-1)^op2)*2;
    M2(4,12) = yf-((-1)^op2)*2;
    M2(5,12) = yf-((-1)^op2)*1;
    M2(6,12) = yf-((-1)^op2)*1;
       M2(7,12) = yf;

    case 7

   %%% PIEZA 7

    M2(1,13) = xf;
    M2(2,13) = xf+((-1)^op1)*3;
    M2(3,13) = xf+((-1)^op1)*3;
    M2(4,13) = xf;
    M2(5,13) = xf;

    M2(1,14) = yf;
    M2(2,14) = yf;
    M2(3,14) = yf-((-1)^op2)*1;
    M2(4,14) = yf-((-1)^op2)*1;
       M2(5,14) = yf;

    case 8

   %%% PIEZA 8

    M2(1,15) = xf;
    M2(2,15) = xf+((-1)^op1)*1;
    M2(3,15) = xf+((-1)^op1)*1;
    M2(4,15) = xf;
    M2(5,15) = xf;
    M2(6,15) = xf-((-1)^op1)*2;
    M2(7,15) = xf-((-1)^op1)*2;
    M2(8,15) = xf;
    M2(9,15) = xf;

    M2(1,16) = yf;
    M2(2,16) = yf;
    M2(3,16) = yf-((-1)^op2)*3;
    M2(4,16) = yf-((-1)^op2)*3;
    M2(5,16) = yf-((-1)^op2)*2;
    M2(6,16) = yf-((-1)^op2)*2;
    M2(7,16) = yf-((-1)^op2)*1;
    M2(8,16) = yf-((-1)^op2)*1;
       M2(9,16) = yf;

    case 9

   %%% PIEZA 9

    M2(1,17) = xf;
    M2(2,17) = xf+((-1)^op1)*4;
    M2(3,17) = xf+((-1)^op1)*4;
    M2(4,17) = xf;
    M2(5,17) = xf;

    M2(1,18) = yf;
    M2(2,18) = yf;
    M2(3,18) = yf-((-1)^op2)*1;
    M2(4,18) = yf-((-1)^op2)*1;
       M2(5,18) = yf;

    case 10

   %%% PIEZA 10

    M2(1,19) = xf;
    M2(2,19) = xf+((-1)^op1)*2;
    M2(3,19) = xf+((-1)^op1)*2;
    M2(4,19) = xf+((-1)^op1)*3;
    M2(5,19) = xf+((-1)^op1)*3;
    M2(6,19) = xf+((-1)^op1)*2;
    M2(7,19) = xf+((-1)^op1)*2;
    M2(8,19) = xf+((-1)^op1)*1;
    M2(9,19) = xf+((-1)^op1)*1;
    M2(10,19)= xf;
        M2(11,19) = xf;


    M2(1,20) = yf;
    M2(2,20) = yf;
    M2(3,20) = yf-((-1)^op2)*1;
    M2(4,20) = yf-((-1)^op2)*1;
    M2(5,20) = yf-((-1)^op2)*2;
    M2(6,20) = yf-((-1)^op2)*2;
    M2(7,20) = yf-((-1)^op2)*3;
    M2(8,20) = yf-((-1)^op2)*3;
    M2(9,20) = yf-((-1)^op2)*1;
    M2(10,20)= yf-((-1)^op2)*1;
       M2(11,20) = yf;

    case 11

   %%% PIEZA 11

    M2(1,21) = xf;
    M2(2,21) = xf+((-1)^op1)*2;
    M2(3,21) = xf+((-1)^op1)*2;
    M2(4,21) = xf+((-1)^op1)*1;
    M2(5,21) = xf+((-1)^op1)*1;
    M2(6,21) = xf-((-1)^op1)*1;
    M2(7,21) = xf-((-1)^op1)*1;
    M2(8,21) = xf;
        M2(9,21) = xf;


    M2(1,22) = yf;
    M2(2,22) = yf;
    M2(3,22) = yf-((-1)^op2)*1;
    M2(4,22) = yf-((-1)^op2)*1;
    M2(5,22) = yf-((-1)^op2)*2;
    M2(6,22) = yf-((-1)^op2)*2;
    M2(7,22) = yf-((-1)^op2)*1;
    M2(8,22) = yf-((-1)^op2)*1;
       M2(9,22) = yf;

    case 12

  %%% PIEZA 12

    M2(1,23) = xf;
    M2(2,23) = xf+((-1)^op1)*1;
    M2(3,23) = xf+((-1)^op1)*1;
    M2(4,23) = xf+((-1)^op1)*2;
    M2(5,23) = xf+((-1)^op1)*2;
    M2(6,23) = xf+((-1)^op1)*1;
    M2(7,23) = xf+((-1)^op1)*1;
    M2(8,23) = xf;
    M2(9,23) = xf;
    M2(10,23)= xf-((-1)^op1)*1;
    M2(11,23)= xf-((-1)^op1)*1;
    M2(12,23)= xf;
        M2(13,23) = xf;


    M2(1,24) = yf;
    M2(2,24) = yf;
    M2(3,24) = yf-((-1)^op2)*1;
    M2(4,24) = yf-((-1)^op2)*1;
    M2(5,24) = yf-((-1)^op2)*2;
    M2(6,24) = yf-((-1)^op2)*2;
    M2(7,24) = yf-((-1)^op2)*3;
    M2(8,24) = yf-((-1)^op2)*3;
    M2(9,24) = yf-((-1)^op2)*2;
    M2(10,24)= yf-((-1)^op2)*2;
    M2(11,24)= yf-((-1)^op2)*1;
    M2(12,24)= yf-((-1)^op2)*1;
        M2(13,24) = yf;

    
    case 13

  %%% PIEZA 13

    M2(1,25) = xf;
    M2(2,25) = xf+((-1)^op1)*1;
    M2(3,25) = xf+((-1)^op1)*1;
    M2(4,25) = xf+((-1)^op1)*2;
    M2(5,25) = xf+((-1)^op1)*2;
    M2(6,25) = xf+((-1)^op1)*3;
    M2(7,25) = xf+((-1)^op1)*3;
    M2(8,25) = xf;
        M2(9,25) = xf;


    M2(1,26) = yf;
    M2(2,26) = yf;
    M2(3,26) = yf-((-1)^op2)*1;
    M2(4,26) = yf-((-1)^op2)*1;
    M2(5,26) = yf;
    M2(6,26) = yf;
    M2(7,26) = yf-((-1)^op2)*2;
    M2(8,26) = yf-((-1)^op2)*2;
        M2(9,26) = yf;

    
    case 14

%%% PIEZA 14

    M2(1,27) = xf;
    M2(2,27) = xf+((-1)^op1)*1;
    M2(3,27) = xf+((-1)^op1)*1;
    M2(4,27) = xf;
        M2(5,27) = xf;


    M2(1,28) = yf;
    M2(2,28) = yf;
    M2(3,28) = yf-((-1)^op2)*1;
    M2(4,28) = yf-((-1)^op2)*1;
        M2(5,28) = yf;

    
    case 15

%%% PIEZA 15

    M2(1,29) = xf;
    M2(2,29) = xf+((-1)^op1)*2;
    M2(3,29) = xf+((-1)^op1)*2;
    M2(4,29) = xf+((-1)^op1)*1;
    M2(5,29) = xf+((-1)^op1)*1;
    M2(6,29) = xf-((-1)^op1)*1;
    M2(7,29) = xf-((-1)^op1)*1;
    M2(8,29) = xf;
        M2(9,29) = xf;


    M2(1,30) = yf;
    M2(2,30) = yf;
    M2(3,30) = yf-((-1)^op2)*1;
    M2(4,30) = yf-((-1)^op2)*1;
    M2(5,30) = yf-((-1)^op2)*3;
    M2(6,30) = yf-((-1)^op2)*3;
    M2(7,30) = yf-((-1)^op2)*2;
    M2(8,30) = yf-((-1)^op2)*2;
        M2(9,30) = yf;

    case 16

%%% PIEZA 16

    M2(1,31) = xf;
    M2(2,31) = xf+((-1)^op1)*3;
    M2(3,31) = xf+((-1)^op1)*3;
    M2(4,31) = xf+((-1)^op1)*2;
    M2(5,31) = xf+((-1)^op1)*2;
    M2(6,31) = xf;
        M2(7,31) = xf;


    M2(1,32) = yf;
    M2(2,32) = yf;
    M2(3,32) = yf-((-1)^op2)*2;
    M2(4,32) = yf-((-1)^op2)*2;
    M2(5,32) = yf-((-1)^op2)*1;
    M2(6,32) = yf-((-1)^op2)*1;
        M2(7,32) = yf;

    
    case 17

%%% PIEZA 17

    M2(1,33) = xf;
    M2(2,33) = xf+((-1)^op1)*3;
    M2(3,33) = xf+((-1)^op1)*3;
    M2(4,33) = xf+((-1)^op1)*2;
    M2(5,33) = xf+((-1)^op1)*2;
    M2(6,33) = xf;
        M2(7,33) = xf;


    M2(1,34) = yf;
    M2(2,34) = yf;
    M2(3,34) = yf-((-1)^op2)*3;
    M2(4,34) = yf-((-1)^op2)*3;
    M2(5,34) = yf-((-1)^op2)*1;
    M2(6,34) = yf-((-1)^op2)*1;
        M2(7,34) = yf;

    
    case 18

%%% PIEZA 18

    M2(1,35) = xf;
    M2(2,35) = xf+((-1)^op1)*2;
    M2(3,35) = xf+((-1)^op1)*2;
    M2(4,35) = xf-((-1)^op1)*1;
    M2(5,35) = xf-((-1)^op1)*1;
    M2(6,35) = xf;
    M2(7,35) = xf;

    M2(1,36) = yf;
    M2(2,36) = yf;
    M2(3,36) = yf-((-1)^op2)*2;
    M2(4,36) = yf-((-1)^op2)*2;
    M2(5,36) = yf-((-1)^op2)*1;
    M2(6,36) = yf-((-1)^op2)*1;
        M2(7,36) = yf;

    case 19

%%% PIEZA 19

    M2(1,37) = xf;
    M2(2,37) = xf+((-1)^op1)*1;
    M2(3,37) = xf+((-1)^op1)*1;
    M2(4,37) = xf+((-1)^op1)*2;
    M2(5,37) = xf+((-1)^op1)*2;
    M2(6,37) = xf-((-1)^op1)*1;
    M2(7,37) = xf-((-1)^op1)*1;
    M2(8,37) = xf;
    M2(9,37) = xf;

    M2(1,38) = yf;
    M2(2,38) = yf;
    M2(3,38) = yf-((-1)^op2)*1;
    M2(4,38) = yf-((-1)^op2)*1;
    M2(5,38) = yf-((-1)^op2)*2;
    M2(6,38) = yf-((-1)^op2)*2;
    M2(7,38) = yf-((-1)^op2)*1;
    M2(8,38) = yf-((-1)^op2)*1;
        M2(9,38) = yf;

    case 20

%%% PIEZA 20

    M2(1,39) = xf;
    M2(2,39) = xf+((-1)^op1)*1;
    M2(3,39) = xf+((-1)^op1)*1;
    M2(4,39) = xf+((-1)^op1)*3;
    M2(5,39) = xf+((-1)^op1)*3;
    M2(6,39) = xf-((-1)^op1)*1;
    M2(7,39) = xf-((-1)^op1)*1;
    M2(8,39) = xf;
        M2(9,39) = xf;


    M2(1,40) = yf;
    M2(2,40) = yf;
    M2(3,40) = yf-((-1)^op2)*1;
    M2(4,40) = yf-((-1)^op2)*1;
    M2(5,40) = yf-((-1)^op2)*2;
    M2(6,40) = yf-((-1)^op2)*2;
    M2(7,40) = yf-((-1)^op2)*1;
    M2(8,40) = yf-((-1)^op2)*1;
        M2(9,40) = yf;

    case 21

%%% PIEZA 21

    M2(1,41) = xf;
    M2(2,41) = xf+((-1)^op1)*1;
    M2(3,41) = xf+((-1)^op1)*1;
    M2(4,41) = xf-((-1)^op1)*2;
    M2(5,41) = xf-((-1)^op1)*2;
    M2(6,41) = xf-((-1)^op1)*1;
    M2(7,41) = xf-((-1)^op1)*1;
    M2(8,41) = xf;
      M2(9,41) = xf;

    M2(1,42) = yf;
    M2(2,42) = yf;
    M2(3,42) = yf-((-1)^op2)*3;
    M2(4,42) = yf-((-1)^op2)*3;
    M2(5,42) = yf-((-1)^op2)*2;
    M2(6,42) = yf-((-1)^op2)*2;
    M2(7,42) = yf-((-1)^op2)*1;
    M2(8,42) = yf-((-1)^op2)*1;
       M2(9,42) = yf;

end
    
    

end

function Area = putShape()

rng('shuffle')
long = 15;
num_ciclos = 10;
num_fila = 13;
num_columna = 21;
M_Fig   = NaN(num_fila,2*num_columna);
M_State = NaN(num_fila,4*num_columna);
[f_M_State,~] = size(M_State);

cont_loop = 0;
Fig_Falt = [0;0];
angles = [-270 -180 -90 0 90 180 270];
numshape = [0,0];
r = [0,1];
Area = [0,0];

 while cont_loop < num_ciclos % CHEQUEAR SI LA PRIMERA FIGURA DE UN BANDO QUEDA DISPONIBLEPARA EL OTRO BANDO
     
   for players = 1:length(r) 
    cont_gen = 0;    
    control = 0;
    while cont_gen == 0          
        control = control+1;      
        if numshape(r(players)+1) == 0 % PRIMERA FIGURA A COLOCAR
                        
            cont_for = 0;
            x1 = long*r(players);
            y1 = long*r(players) ; 
            
            [M_Fig,colm,Fig_Falt] = chooseShape(M_Fig,r(players)+1,x1,y1,Fig_Falt); % ESCOGE LA FIGURA A COLOCAR DE LA MATRIZ DE POLIGONOS
            
            [X,Y] = shape(colm,M_Fig);
            
            X = round(X);
            Y = round(Y);
            
            for i = 1:length(X)
                if (X(i)<0||X(i)>long)||(Y(i)<0||Y(i)>long)
                   cont_for = 1;
                   break
                end
            end
            
            if cont_for == 1
                
               continue
               
            else
                
                Fig_Falt(r(players)+1,end+1) = colm;
                cont_gen = cont_gen+1;
                M_State(:,r(players)*42+1) = M_Fig(:,2*colm-1);
                M_State(:,r(players)*42+2) = M_Fig(:,2*colm  );
                F = polyshape(X,Y); 
                [fx,fy] = boundary(F);
                pause(1)
                numshape(r(players)+1) = numshape(r(players)+1) + 1;
                Area(r(players)+1) = Area(r(players)+1) + polyarea(fx,fy);
                
                if r(players) == 0                
                   plot(F,'FaceColor',[1 0 0])
                else
                    plot(F,'FaceColor',[1 1 0])
                end
                
                [a,b]=centroid(F);
                text(a,b, num2str(numshape(r(players)+1)))
                xlim([0,long])
                ylim([0,long])
                hold on
                
            end
            
                        
        else % YA ESTA COLOCADA LA PRIMERA FIGURA            
            
            cloop = 0;
                        
            while cloop == 0 % ESCOGE UN VERTICE DEL CONJUNTO DE FIGURAS YA PUESTAS (MATRIZ DE ESTADO) DIFERENTE DE NaN
                    
               num_colm = randi([1,numshape(r(players)+1)],1,1);   % FIGURA DE LA MATRIZ DE ESTADO DONDE COLOCAR EL POLIGONO
               i_M_State = randi([1,f_M_State],1,1);           % COORDENADA DE FILA DE LA MATRIZ DE ESTADO
               j_M_State = num_colm;             % COORDENADA IMPAR DE COLUMNA DE LA MATRIZ DE ESTADO 
                                                                   % j_polig_state = r(players)*42+2*(num_colm)-1;
                if ~isnan(M_State(i_M_State,r(players)*42+2*j_M_State-1))
                   cloop = 1;
                end
            end
            
            x = M_State(i_M_State,r(players)*42+2*j_M_State-1);    %  COORDENADA " x " DE VERTICE DEL CONJUNTO DE ESTADO
                                                         %  DONDE COLOCAR
                                                         %  LA FIGURA
            y = M_State(i_M_State,r(players)*42+2*j_M_State);  %  COORDENADA " y " DE VERTICE DEL CONJUNTO DE ESTADO
        
            [M_Fig,colm,Fig_Falt] = chooseShape(M_Fig,r(players)+1,x,y,Fig_Falt);% ESCOGE LA FIGURA A COLOCAR DE LA MATRIZ DE POLIGONOS
                                                                    % INICIALIZADA EN "x" E "y" ANTERIOR  
            [X,Y] = shape(colm,M_Fig); % LIMPIA DE "NaN" LAS COORDENADAS DE LA FIGUA ESCOGIDA A COLOCAR 
            
            X = round(X);
            Y = round(Y);           
            fig = colm                               
                                
            F = polyshape(X,Y);                % CONVIERTE LAS COORDENADAS EN POLIGONO  A COLOCAR
            [fx,fy] = boundary(F)
            
            indice_de_pto = randi([1,length(fx)],1,1);
            
            pto = [fx(indice_de_pto),fy(indice_de_pto)]; % punto escogido al azar de la figura siguiente a colocar 
            
            vec_desp = [x-pto(1), y-pto(2)];             
                        
            H = translate(F,vec_desp); % REALIZA UNA OPERACION DE TRASLACION
            
            angle = angles(randi([1 length(angles)],1,1));
            
            G = rotate(H,angle,[x,y]);
            [gx,gy] = boundary(G);            
            gx = round(gx);
            gy = round(gy);  
                       
            for k = 1:numshape(1)                 % RASTREA LOS POLIGONOS EN LA MATRIZ DE ESTADO  
%                   ovrl = 0;      
                
                [U,V] = shape(k,M_State);      % ALAMACENA LAS COORDENADAS DE LA MATRIZ DE ESTADO Y ELIMINALOS ELEMENTOS NaN
                U = round(U);
                V = round(V);
                Temp_Shape = polyshape(U,V);
                ovrl = overlaps(G,Temp_Shape); % CHEQUEA SOLAPAMIENTO DE POLIGONOS
               
                if ovrl == 1                        
                   break                                          
                end 
            end
            
            if ovrl == 1                   
                continue
            end
            
            for k = 1:numshape(2)                 % RASTREA LOS POLIGONOS EN LA MATRIZ DE ESTADO  
%                 ovrl = 0;      
                
                [U,V] = shape(21+k,M_State);      % ALAMACENA LAS COORDENADAS DE LA MATRIZ DE ESTADO Y ELIMINALOS ELEMENTOS NaN
                U = round(U);
                V = round(V);
                Temp_Shape = polyshape(U,V);
                ovrl = overlaps(G,Temp_Shape); % CHEQUEA SOLAPAMIENTO DE POLIGONOS
               
                if ovrl == 1                        
                   break                                          
                end 
            end
            
            if ovrl == 1                   
                continue
            end
            
            for k = 1:numshape(r(players)+1)
                ovrl = 0;      
                
                [U,V] = shape(21*r(players)+k,M_State);      % ALAMACENA LAS COORDENADAS DE LA MATRIZ DE ESTADO Y ELIMINALOS ELEMENTOS NaN
                U = round(U);
                V = round(V);
                
                [~,on1]=inpolygon(gx,gy,U,V ); 
                [~,on2]=inpolygon(U,V,gx,gy);       
    
                if  numel(gx(on1))>1 || numel(U(on2))>1                     
                    ovrl = 1;
                    break                
                end                
                
                if numel(gx(on1)) == 1 && k ~= num_colm
                
                  for i = 1:length(gx)
                     for j = 1:length(U)                           
                      
                          delta = round([gx(i),gy(i)]-[U(j),V(j)]);
                          norma = norm(delta);
                          
                          if  norma == 0
                              break
                          end
                       
                     end 
                     if norma == 0
                         break
                     end
                  end               
                
                  if norma ~= 0
                     ovrl = 1;
                     break
                  end
                
                end
                    
            end                               
              
                        
            if ovrl == 1                   
                continue
            else
                
                for i = 1:length(gx)
                   if (gx(i)<0||gx(i)>long)||(gy(i)<0||gy(i)>long) % CONTROL DE FRONTERAS
                      ovrl = 1;
                      break
                   end
                end
                if ovrl == 1
                    continue
                else                          
                    Fig_Falt(r(players)+1,end+1) = colm;
                    cont_gen = cont_gen+1;
                    delta = num_fila-length(gx);
                    for i = 1:delta
                       gx(end+1) = NaN;
                       gy(end+1) = NaN;
                    end
                    M_State(:,r(players)*42+2*(numshape(r(players)+1)+1)-1) = gx;
                    M_State(:,r(players)*42+2*(numshape(r(players)+1)+1)) = gy;
                    numshape(r(players)+1) = numshape(r(players)+1) + 1;
                    [gx,gy] = boundary(G);
                    Area(r(players)+1) = Area(r(players)+1) + polyarea(gx,gy);
                    pause(1)
                    
                    if (r(players)) == 0               
                       plot(G,'FaceColor',[0.3010 0.7450 0.9330])
                    else
                       plot(G,'FaceColor',[0 1 0])
                    end
                    
                    plot(G,'FaceColor',[0.3010 0.7450 0.9330])
                    [a,b]=centroid(G);
                    text(a,b, num2str(numshape(r(players)+1)))
                    hold on 
                end
                       
            end            
                                
        end                               

    end
    control0 = control  
   end   
   cont_loop = cont_loop+1;   
 end


end
