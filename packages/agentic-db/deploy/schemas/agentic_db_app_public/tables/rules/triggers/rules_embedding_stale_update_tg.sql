-- Deploy: schemas/agentic_db_app_public/tables/rules/triggers/rules_embedding_stale_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_private/trigger_fns/rules_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/rules/columns/trigger_concept/column


CREATE TRIGGER rules_embedding_stale_update_tg
BEFORE UPDATE ON agentic_db_app_public.rules
FOR EACH ROW
WHEN (OLD.trigger_concept IS DISTINCT FROM NEW.trigger_concept)
EXECUTE PROCEDURE agentic_db_private.rules_embedding_stale ( );

