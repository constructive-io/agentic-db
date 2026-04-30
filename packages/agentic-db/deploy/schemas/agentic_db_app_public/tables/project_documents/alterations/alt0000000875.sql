-- Deploy: schemas/agentic_db_app_public/tables/project_documents/alterations/alt0000000875
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_documents/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


COMMENT ON TABLE agentic_db_app_public.project_documents IS E'@behavior +manyToMany';

