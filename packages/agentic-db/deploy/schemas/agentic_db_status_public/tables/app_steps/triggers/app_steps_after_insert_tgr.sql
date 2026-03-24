-- Deploy: schemas/agentic_db_status_public/tables/app_steps/triggers/app_steps_after_insert_tgr
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_private/schema
-- requires: schemas/agentic_db_status_public/tables/app_steps/table
-- requires: schemas/agentic_db_status_private/trigger_fns/tg_upd_achv
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


CREATE TRIGGER app_steps_after_insert_tgr
AFTER INSERT ON agentic_db_status_public.app_steps
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_status_private.tg_upd_achv ( );

