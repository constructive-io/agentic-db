-- Deploy: schemas/agentic_db_app_public/tables/notes_chunks/alterations/alt0000001009
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/notes_chunks/table


COMMENT ON TABLE "agentic_db_app_public".notes_chunks IS E'@@chunksOf {"parent_fk": "notes_id", "parent_table": "notes"}';

