-- Deploy: schemas/agentic_db_app_public/tables/skill_chunks/triggers/skill_chunks_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx
-- requires: schemas/agentic_db_private/trigger_fns/skill_chunks_embedding_stale


CREATE TRIGGER skill_chunks_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".skill_chunks
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".skill_chunks_embedding_stale ( );

