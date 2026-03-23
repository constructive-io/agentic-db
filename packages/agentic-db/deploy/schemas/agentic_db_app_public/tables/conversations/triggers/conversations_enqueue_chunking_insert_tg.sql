-- Deploy: schemas/agentic_db_app_public/tables/conversations/triggers/conversations_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_private/trigger_fns/conversations_enqueue_chunking
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


CREATE TRIGGER conversations_enqueue_chunking_insert_tg
AFTER INSERT ON agentic_db_app_public.conversations
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.conversations_enqueue_chunking ( );

