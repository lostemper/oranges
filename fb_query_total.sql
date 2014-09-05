

select fa.`code`,count(ms.MEMBER_ID) role_num ,sum(o.SCORE)yujun from fb_app fa 
join members_games mg on fa.app_id = mg.app_id
join members_servers ms on ms.MEMBER_ID = mg.member_id
join servers s on s.ID = ms.SERVER_ID
join orders o on o.MEMBER = ms.MEMBER_ID and o.GAME = 11
where fa.game=11 and s.GAME=mg.game_id
and ms.CREATEDAY BETWEEN '2013-5-1 00:00:00' and '2013-5-31 23:59:59'
and o.ORDER_TIME BETWEEN ms.CREATEDAY and ADDDATE(ms.CREATEDAY,INTERVAL 1 MONTH)
group by fa.app_id;



select  s.ID,ms.MEMBER_ID  from  members_servers   ms  join  servers    s  on  ms.SERVER_ID = s.ID and  s.game = 11
select  fa.`code` ,mg.member_id from  fb_app  fa  join   members_games  mg  on  fa.app_id = mg.app_id  where  mg.game_id = 11



select fa.`code`,count(ms.MEMBER_ID) role_num ,sum(o.SCORE)yujun from fb_app fa 
join members_games mg on fa.app_id = mg.app_id
join members_servers ms on ms.MEMBER_ID = mg.member_id
join servers s on s.ID = ms.SERVER_ID
join orders o on o.MEMBER = ms.MEMBER_ID and o.GAME = 11
where fa.game=11 and s.GAME=mg.game_id
and ms.CREATEDAY BETWEEN '2013-5-1 00:00:00' and '2013-5-2 23:59:59'
and o.ORDER_TIME BETWEEN '2013-5-1 00:00:00' and '2013-6-1 00:00:00'
group by fa.app_id;

