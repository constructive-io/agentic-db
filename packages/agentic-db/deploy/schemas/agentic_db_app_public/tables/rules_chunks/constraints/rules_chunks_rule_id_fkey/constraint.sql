-- Deploy: schemas/agentic_db_app_public/tables/rules_chunks/constraints/rules_chunks_rule_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules_chunks/table
-- requires: schemas/agentic_db_app_public/tables/venues_chunks/indexes/venues_chunks_chunk_index_idx


ALTER TABLE agentic_db_app_public.rules_chunks 
  ADD CONSTRAINT rules_chunks_rule_id_fkey 
    FOREIGN KEY(rule_id) 
    REFERENCES agentic_db_app_public.rules (id) 
    ON DELETE CASCADE;

