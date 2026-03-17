-- Deploy: schemas/agentic_db_users_public/tables/users/indexes/users_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_users_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_users_public/tables/users/columns/updated_at/column


CREATE INDEX users_updated_at_idx ON "agentic_db_users_public".users ( updated_at );

