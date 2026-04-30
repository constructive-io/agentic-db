-- Deploy: schemas/agentic_db_app_public/tables/project_contacts/alterations/alt0000000787
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/project_contacts/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


COMMENT ON TABLE agentic_db_app_public.project_contacts IS E'@behavior +manyToMany';

