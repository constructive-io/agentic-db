-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/indexes/users_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/columns/created_at/column


CREATE INDEX users_created_at_idx ON "agent-os-1773550873753-b6c4a3e1-users-public".users ( created_at );

