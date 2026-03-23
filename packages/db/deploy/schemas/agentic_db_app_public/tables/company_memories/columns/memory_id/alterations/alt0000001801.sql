-- Deploy: schemas/agentic_db_app_public/tables/company_memories/columns/memory_id/alterations/alt0000001801
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_memories/table
-- requires: schemas/agentic_db_app_public/tables/company_memories/columns/memory_id/column
-- requires: schemas/agentic_db_app_public/tables/contact_memories/policies/auth_del_entity_membership/policy


ALTER TABLE "agentic_db_app_public".company_memories 
  ALTER COLUMN memory_id SET NOT NULL;

