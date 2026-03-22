-- Deploy: schemas/agentic_db_app_public/tables/conversations/triggers/conversations_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_private/trigger_fns/conversations_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


CREATE TRIGGER conversations_embedding_stale_insert_tg
BEFORE INSERT ON agentic_db_app_public.conversations
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.conversations_embedding_stale ( );

