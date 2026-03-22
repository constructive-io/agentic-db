-- Deploy: schemas/agentic_db_app_public/tables/rules/triggers/rules_enqueue_embedding_update_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_private/trigger_fns/rules_enqueue_embedding
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


CREATE TRIGGER rules_enqueue_embedding_update_tg
AFTER UPDATE ON "agentic_db_app_public".rules
FOR EACH ROW
WHEN (NEW.embedding_stale IS TRUE)
EXECUTE PROCEDURE "agentic_db_private".rules_enqueue_embedding ( );

