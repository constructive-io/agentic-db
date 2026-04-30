-- Deploy: schemas/agentic_db_app_public/tables/company_memories/alterations/alt0000000843
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_memories/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


COMMENT ON TABLE agentic_db_app_public.company_memories IS E'@behavior +manyToMany';

