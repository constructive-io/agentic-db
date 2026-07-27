-- Deploy: schemas/agentic_db_app_public/tables/task_notes/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/task_notes/table


COMMENT ON TABLE agentic_db_app_public.task_notes IS E'@behavior +manyToMany';

