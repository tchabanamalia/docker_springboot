<%-- 
    Document   : acceuil.jsp
    Created on : 13 janv. 2023, 17:23:17
    Author     : malia
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap');
:root{
    --blanche: #ffff;
    --Noir: #222;
    --vert_cidron: #8bf4c3;
    --primmmaire: #3b61f9;
    --vert: #28e506;
    --violet: #e8c1f7;
    --rose: hsl(318, 73%, 60%);
    --blue_claire: #d6eaf8;
    --bleu: #0632e5;
}

*,
*::before,
*::after{
    margin: 0;
    padding: 0;
    box-sizing: inherit;
}

html{
    box-sizing: border-box;
    font-size: 62.5%;
}

body{
    font-family: 'Poppins', sans-serif;
    font-size: 1.8em;
    color: var(--blanche);
    background-color: var(--primmmaire);
}

ul, li{
    list-style: none;
}

a{
    text-decoration: none;
    color: inherit;
}

img{
    max-width: 100%;
}

.promo{
    background-color: var(--rouge);
    text-align: center;
    color: var(--Noir);
    padding: 0.5em 0;
}

.containe{
    max-width: 114rem;
    margin: 0 auto;
}

@media only screen and (max-width:1200px){
    .containe{
        padding: 0 3rem;
    }
}

.navigation{
    height: 7rem;
    justify-content: space-between;
}

.d-flex{
    display: flex;
    align-items: center;
}

.icon1{
    display: none;
}

.menu .top{
    display: none;
}

.logo{
    font-weight: 700;
    font-size: 2rem;
    padding: 0rem 1.5rem;
}

.logo samp {
    font-size: 3rem;
    color: var(--vert);
}

.nav_item:not(:last-child){
    margin: 0.5rem;
}

.nav_item:first-child.nav-link{
    color: var(--primmmaire);
}

.nav-link{
    padding: 0 1rem;
    transform: all 300ms ease-in-out;
}

.nav-link:hover{
    color: var(--vert);
}

.nav .icons div{
    font-size: 2rem;
    padding: 0.5rem;
    cursor: pointer;
    transition: all 300ms ease-in-out;
}

.nav .icons div:not(:first-child){
    margin-right: 0.5rem;
}

.nav .icons div:hover{
    color: var(--vert);
}
.nav .icons div:last-child{
    position: relative;
}
.nav .icons div span{
    position: absolute;
    top: -0.5rem;
    right: -1.2rem;
    font-size: 1rem;
    font-weight: 600;
    color: var(--rouge);
    background-color: var(--blanche);
    height: 2.2rem;
    width: 2.2rem;
    border-radius: 50%;
}

.align-center{
    display: flex;
    align-items: center;
    justify-content: center;
}

@media only screen and (max-width: 768px){
    .navigation{
        padding: 1rem 0;
    }

    .menu{
        position: fixed;
        top: 0;
        left: -100%;
        background-color: var(--vert_cidron);
        height: 100%;
        width: 55%;
        max-width: 45rem;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        transition: all 500ms ease-in-out;
        z-index: 100;
    }

    .icon1{
        display: block;
        font-size: 3rem;
        cursor: pointer;
    }

    .logo span{
        color: var(--primmmaire);
    }

    .logo a{
        font-size: 1.8rem;
        font-weight: 400;
    }

    .menu .top{
        display: block;
        position: relative;
        background-color: var(--primmmaire);
        height: 6rem;
        color: var(--blanche);
    }

    .top span{
        display: flex;
        align-items: center;
        position: absolute;
        top: 50%; 
        transform: translateY(-50%);
        right: 1rem;
        font-size: 2rem;
        cursor: pointer;
    }

    .top span i{
        font-size: 3rem;
    }

    .nav_list{
        flex-direction: column;
        align-items: start;
        padding: 2rem 0;
    }

    .nav_item{
        margin: 0 0 2rem 0;
    }

    .nav-link{
        padding: 0.7rem;
    }

    .menu.monter{
        left: 0;
    }
     
} 

.banniere{
    height: calc(60vh - 7rem);
    background-color: var(--rouge);  
    overflow: hidden;
    position: relative;
    z-index: 0;
}

.banniere-contenu{
    height: 100%;
}
.banniere-contenu .gouche{
    margin-top: -5rem;
}

.banniere-contenu .gouche h5{
    font-weight: 100;
    margin-top: 2rem;
}
.banniere-contenu .droit img{
    position: relative;
    bottom: 0;
    right: 1.5%;
    width: 160px;
}
    </style>

</head>
<body>
    <div class="promo">
        <span>Système d'authentifation</span>               
    </div>
    
    <header class="header"> 
        <nav class="nav containe">
            <div class="navigation d-flex">
		<div class="icon1">
                    <i class='bx bx-menu'></i>
                                </div>
                <div class="logo">
                    <a href="#"><samp>S</samp>pring<samp>B</samp>OOT</a>
                </div>
                <div class="menu">
                    <ul class="nav_list d-flex" >
                        <li class="nav_item">
                            <a href="${pageContext.request.contextPath}/" class="nav-link">Accueil</a>
                        </li>
                        <li class="nav_item">
                            <a href="${pageContext.request.contextPath}/login" class="nav-link">Se loger</a>
                        </li>
                        <li class="nav_item">
                            <a href="${pageContext.request.contextPath}/registers" class="nav-link">S'Authentifier</a>
                        </li>
                       
                    </ul>
                </div> 
            </div>
       </nav>
    <div class="banniere">
    </div>
    </header>
</body>
</html>
