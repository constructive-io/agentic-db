-- Deploy: schemas/agentic_db_app_public/tables/prompts/triggers/prompts_enqueue_chunking_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/prompts/table
-- requires: schemas/agentic_db_private/trigger_fns/prompts_enqueue_chunking
-- requires: schemas/agentic_db_app_public/tables/touchpoints/indexes/touchpoints_channel_idx


CREATE TRIGGER prompts_enqueue_chunking_insert_tg
AFTER INSERT ON agentic_db_app_public.prompts
FOR EACH ROW
EXECUTE PROCEDURE agentic_db_private.prompts_enqueue_chunking ( );

