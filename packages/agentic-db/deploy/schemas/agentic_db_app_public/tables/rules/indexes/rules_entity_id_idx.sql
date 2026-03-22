-- Deploy: schemas/agentic_db_app_public/tables/rules/indexes/rules_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


CREATE INDEX rules_entity_id_idx ON agentic_db_app_public.rules USING BTREE ( entity_id );

