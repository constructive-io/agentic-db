-- Deploy: schemas/agentic_db_status_public/tables/org_steps/triggers/org_steps_after_insert_tgr
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table
-- requires: schemas/agentic_db_status_private/trigger_fns/member_tg_upd_achv


CREATE TRIGGER org_steps_after_insert_tgr
AFTER INSERT ON agentic_db_status_public.org_steps
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_status_private.member_tg_upd_achv ( );

