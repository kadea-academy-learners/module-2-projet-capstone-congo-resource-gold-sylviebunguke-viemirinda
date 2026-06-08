 SELECT s.nom,COUNT(id_engin) AS nombre_d_engins
FROM engins e 
INNER JOIN sites s
ON e.id_site =s.id_site 
GROUP BY nom;

SELECT date_prod , tonnage_brut
FROM production 
WHERE tonnage_brut = 0

SELECT e.id_engin , s.nom 
FROM engins e
INNER JOIN sites s 
ON e.id_site = s.id_site

SELECT s.province, p.type_minerai, SUM(p.tonnage_brut)AS total_brut_type_minerai
FROM production p 
INNER JOIN sites s 
ON s.id_site = p.id_site 
GROUP BY p.type_minerai, s.province  ;

SELECT SUM(tonnage_brut*teneur)AS total_metal_pur
FROM production p 

SELECT SUM(tonnage_vendu*prix_unitaire_usd)
FROM exportations e 

SELECT s.nom AS nom_du_site,AVG(teneur)AS teneur_moyenne
FROM production p
INNER JOIN sites s 
ON p.id_site =s.id_site 
GROUP BY s.nom HAVING AVG(p.teneur )<2.5
ORDER BY teneur_moyenne ASC ;
