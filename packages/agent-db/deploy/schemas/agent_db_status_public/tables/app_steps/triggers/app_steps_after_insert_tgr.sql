-- Deploy: schemas/agent_db_status_public/tables/app_steps/triggers/app_steps_after_insert_tgr
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_private/schema
-- requires: schemas/agent_db_status_public/tables/app_steps/table
-- requires: schemas/agent_db_status_private/trigger_fns/tg_upd_achv


CREATE TRIGGER app_steps_after_insert_tgr
AFTER INSERT ON agent_db_status_public.app_steps
FOR EACH ROW
EXECUTE PROCEDURE agent_db_status_private.tg_upd_achv ( );

