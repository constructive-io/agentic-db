-- Deploy: schemas/agent_db_app_public/tables/skills/indexes/skills_category_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/category/column
-- requires: schemas/agent_db_app_public/tables/memories/indexes/memories_related_entity_id_idx


CREATE INDEX skills_category_idx ON "agent_db_app_public".skills USING BTREE ( category );

