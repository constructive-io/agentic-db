-- Deploy: schemas/agentic_db_app_public/tables/deals/triggers/deals_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/deals/table
-- requires: schemas/agentic_db_private/trigger_fns/deals_embedding_stale
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous


CREATE TRIGGER deals_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.deals
FOR EACH ROW
WHEN (OLD.name IS DISTINCT FROM NEW.name OR OLD.notes_text IS DISTINCT FROM NEW.notes_text)
EXECUTE PROCEDURE agentic_db_private.deals_embedding_stale ( );

