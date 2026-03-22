-- Deploy: schemas/agentic_db_app_public/tables/skill_chunks/columns/skill_id/alterations/alt0000001318
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/columns/skill_id/column
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/indexes/rule_chunks_rule_id_idx


ALTER TABLE "agentic_db_app_public".skill_chunks 
  ALTER COLUMN skill_id SET NOT NULL;

