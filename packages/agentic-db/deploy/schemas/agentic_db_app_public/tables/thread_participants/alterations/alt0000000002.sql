-- Deploy: schemas/agentic_db_app_public/tables/thread_participants/alterations/alt0000000002
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/thread_participants/table


COMMENT ON TABLE agentic_db_app_public.thread_participants IS E'@behavior +manyToMany';

