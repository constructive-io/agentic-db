-- Deploy: schemas/agentic_db_app_public/tables/interactions_chunks/indexes/interactions_chunks_interaction_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/interactions_chunks/table
-- requires: schemas/agentic_db_users_public/tables/users/policies/auth_del_admin_deletes/policy
-- requires: schemas/agentic_db_app_public/tables/interactions_chunks/columns/interaction_id/column


CREATE INDEX interactions_chunks_interaction_id_idx ON agentic_db_app_public.interactions_chunks USING BTREE ( interaction_id );

