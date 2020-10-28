%x0,x1, x2 s�o valores iniciais
%Erro � o erro que dever� ser considerado
%NMax o numero de itera��es maximas para que n�o tenha overflow
%f � a f(x) que busca-se a raiz

function []=Muller(x0,x1,x2,Erro,Nmax,f)
    disp('M�todo de M�ller:');    
    fprintf('f(x)= ');
    disp(f);   
    f=matlabFunction(f);
    h1=x1-x0;
    h2=x2-x1;
    delta1=(f(x1)-f(x0))/h1;
    delta2=(f(x2)-f(x1))/h2;
    a=(delta2-delta1)/(h2+h1);          %a = (delta2-delta1)/(h2+h1)    a, b e c s�o coeficientes da par�bola
    for i=1:Nmax
        b=delta2+h2*a;                  %b = delta2 + h2*a
        
        % D usado como variavel auxiliar para encontrar x3
        D=sqrt((b^2-4*f(x2)*a));        % c = f(x2)
        
        if(abs(b-D)<abs(b+a))
            E=b+D;
        else
            E=b-D;
        end

        h=-2*f(x2)/E;
        % x3= x2 + (-2c)/[b+- (b^2- 4ac)^1/2]
        x3=x2+h; 
        erro=(x3-x2)/x3; %C�lculo de erro relativo estimado
        disp("Itera��o:" + i + " Raiz: "+ (x2+h) + " Erro: " + erro);
        
        if(abs(erro)<Erro)
            return    
        end
        
        % Melhorar as aproxima��es para a pr�xima itera��o
        x0=x1;
        x1=x2;
        x2=x3;

        h1=x1-x0;
        h2=x2-x1;
        delta1=(f(x1)-f(x0))/h1;
        delta2=(f(x2)-f(x1))/h2;
        a=(delta2-delta1)/(h2+h1);
    end
end