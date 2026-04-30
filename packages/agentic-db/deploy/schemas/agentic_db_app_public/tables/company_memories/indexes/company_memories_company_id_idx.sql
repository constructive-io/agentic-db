-- Deploy: schemas/agentic_db_app_public/tables/company_memories/indexes/company_memories_company_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_memories/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx
-- requires: schemas/agentic_db_app_public/tables/company_memories/columns/company_id/column


CREATE INDEX company_memories_company_id_idx ON agentic_db_app_public.company_memories USING BTREE ( company_id );

