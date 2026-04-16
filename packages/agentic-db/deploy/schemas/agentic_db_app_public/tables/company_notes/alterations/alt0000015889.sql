-- Deploy: schemas/agentic_db_app_public/tables/company_notes/alterations/alt0000015889
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_notes/table
-- requires: schemas/agentic_db_app_public/tables/contact_notes/indexes/contact_notes_note_id_idx


COMMENT ON TABLE agentic_db_app_public.company_notes IS E'@behavior +manyToMany';

