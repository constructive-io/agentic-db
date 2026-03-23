-- Deploy: schemas/agentic_db_app_public/tables/skills/triggers/skills_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_private/trigger_fns/skills_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


CREATE TRIGGER skills_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".skills
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".skills_embedding_stale ( );

