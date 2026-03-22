-- Deploy: schemas/agentic_db_app_public/tables/interactions/triggers/interactions_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions/table
-- requires: schemas/agentic_db_private/trigger_fns/interactions_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/interactions/columns/embedding_text/column


CREATE TRIGGER interactions_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.interactions
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.interactions_embedding_stale ( );

