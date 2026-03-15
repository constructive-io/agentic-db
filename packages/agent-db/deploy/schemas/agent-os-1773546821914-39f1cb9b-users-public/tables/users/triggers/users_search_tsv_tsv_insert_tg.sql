-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/triggers/users_search_tsv_tsv_insert_tg
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-users-public/tables/users/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-private/trigger_fns/users_search_tsv_tsv


CREATE TRIGGER users_search_tsv_tsv_insert_tg
BEFORE INSERT ON "agent-os-1773546821914-39f1cb9b-users-public".users
FOR EACH ROW
EXECUTE PROCEDURE "agent-os-1773546821914-39f1cb9b-private".users_search_tsv_tsv ( );

