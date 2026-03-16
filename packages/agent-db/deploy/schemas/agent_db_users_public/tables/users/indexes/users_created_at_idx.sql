-- Deploy: schemas/agent_db_users_public/tables/users/indexes/users_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_users_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_users_public/tables/users/columns/created_at/column


CREATE INDEX users_created_at_idx ON "agent_db_users_public".users ( created_at );

