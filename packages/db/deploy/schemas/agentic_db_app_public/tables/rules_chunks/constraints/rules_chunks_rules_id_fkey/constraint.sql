-- Deploy: schemas/agentic_db_app_public/tables/rules_chunks/constraints/rules_chunks_rules_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE "agentic_db_app_public".rules_chunks 
  ADD CONSTRAINT rules_chunks_rules_id_fkey 
    FOREIGN KEY(rules_id) 
    REFERENCES "agentic_db_app_public".rules (id) 
    ON DELETE CASCADE;

