-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/columns/search_tsv/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-users-public".users 
  ADD COLUMN search_tsv tsvector;

