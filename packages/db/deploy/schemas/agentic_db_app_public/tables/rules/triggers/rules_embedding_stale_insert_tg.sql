-- Deploy: schemas/agentic_db_app_public/tables/rules/triggers/rules_embedding_stale_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_private/schema
-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_private/trigger_fns/rules_embedding_stale
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


CREATE TRIGGER rules_embedding_stale_insert_tg
BEFORE INSERT ON "agentic_db_app_public".rules
FOR EACH ROW
EXECUTE PROCEDURE "agentic_db_private".rules_embedding_stale ( );

