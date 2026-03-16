-- Deploy: schemas/agent_db_memberships_private/trigger_fns/org_org_chart_edge_insert_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema


CREATE FUNCTION "agent_db_memberships_private".org_org_chart_edge_insert_tg() RETURNS TRIGGER AS $_PGFN_$

            BEGIN
                PERFORM "agent_db_memberships_private".org_rebuild_org_hierarchy_sprt(NEW.entity_id);
                RETURN NEW;
            END;
        
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

