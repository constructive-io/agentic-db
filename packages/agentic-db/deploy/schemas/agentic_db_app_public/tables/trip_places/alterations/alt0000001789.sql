-- Deploy: schemas/agentic_db_app_public/tables/trip_places/alterations/alt0000001789
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trip_places/table
-- requires: schemas/agentic_db_app_public/tables/habit_chunks/indexes/habit_chunks_habit_id_idx


COMMENT ON TABLE "agentic_db_app_public".trip_places IS E'@behavior +manyToMany';

