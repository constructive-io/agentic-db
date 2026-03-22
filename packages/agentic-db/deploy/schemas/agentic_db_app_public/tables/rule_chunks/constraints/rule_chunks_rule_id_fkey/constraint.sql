-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/constraints/rule_chunks_rule_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE "agentic_db_app_public".rule_chunks 
  ADD CONSTRAINT rule_chunks_rule_id_fkey 
    FOREIGN KEY(rule_id) 
    REFERENCES "agentic_db_app_public".rules (id) 
    ON DELETE CASCADE;

