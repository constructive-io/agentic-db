-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/indexes/skill_tools_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/skill_tools/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/company_memories/policies/auth_del_entity_membership/policy


CREATE INDEX skill_tools_entity_id_idx ON "agentic_db_app_public".skill_tools USING BTREE ( entity_id );

