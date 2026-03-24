-- Deploy: schemas/agentic_db_status_public/tables/org_steps/triggers/org_steps_after_insert_tgr
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_public/tables/org_steps/table
-- requires: schemas/agentic_db_status_private/trigger_fns/member_tg_upd_achv
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE TRIGGER org_steps_after_insert_tgr
AFTER INSERT ON agentic_db_status_public.org_steps
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_status_private.member_tg_upd_achv ( );

