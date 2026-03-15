-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/indexes/users_search_tsv_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/columns/search_tsv/column


CREATE INDEX users_search_tsv_gin_idx ON "agent-os-1773546821914-39f1cb9b-users-public".users USING GIN ( search_tsv );

