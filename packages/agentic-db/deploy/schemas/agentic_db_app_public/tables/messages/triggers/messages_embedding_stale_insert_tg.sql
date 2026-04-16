-- Deploy: schemas/agentic_db_app_public/tables/messages/triggers/messages_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_private/trigger_fns/messages_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


CREATE TRIGGER messages_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.messages
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".messages_embedding_stale ( );

