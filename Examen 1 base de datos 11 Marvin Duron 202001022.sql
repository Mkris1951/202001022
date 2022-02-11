
/* Pregunta 4 examen # */
select 
	t.numeroID, 
    concat(t.nombres,' ',t.apellidos) Nombre,
    t.apellidos,
    cantClientes
   
from bd_facts.tbl_asesores t 
left join bd_facts.tbl_clientes c 
on t.idasesor = c.idasesor 
where c.idasesor is null

 /*  Pregunta 5 examen */ 

 select
cl.idcliente,
cl.nombrecompleto,
r.idfactura,
r.fechaemision,
r.fechavencimiento,
r.fechapagada
from tbl_facturas r inner join tbl_clientes cl on r.idcliente = cl.idcliente
where r.fechaVencimiento between '2022-01-01 22:36:30' and '2022-02-10 04:11:10';

