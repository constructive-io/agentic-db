-- Deploy: schemas/agent_db_status_public/tables/org_steps/triggers/org_steps_after_insert_tgr
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_private/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table
-- requires: schemas/agent_db_status_private/trigger_fns/member_tg_upd_achv


CREATE TRIGGER org_steps_after_insert_tgr
AFTER INSERT ON agent_db_status_public.org_steps
FOR EACH ROW
EXECUTE PROCEDURE agent_db_status_private.member_tg_upd_achv ( );

