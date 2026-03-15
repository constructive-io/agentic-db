-- Deploy: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/indexes/users_search_tsv_gin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-users-public/tables/users/columns/search_tsv/column


CREATE INDEX users_search_tsv_gin_idx ON "agent-os-1773547105079-c748b4c3-users-public".users USING GIN ( search_tsv );

