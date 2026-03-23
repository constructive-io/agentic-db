-- Revert: schemas/agentic_db_app_public/tables/runtime_states/triggers/runtime_states_embedding_stale_insert_tg


DROP TRIGGER runtime_states_embedding_stale_insert_tg ON "agentic_db_app_public".runtime_states;


