-- Deploy: schemas/agent_db_memberships_private/trigger_fns/org_membership_validate_not_in_hierarchy_tg
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema


CREATE FUNCTION agent_db_memberships_private.org_membership_validate_not_in_hierarchy_tg() RETURNS TRIGGER AS $_PGFN_$

                DECLARE
                    v_old_is_active boolean;
                    v_new_is_active boolean;
                    v_in_hierarchy boolean;
                BEGIN
                    -- Calculate old and new is_active status
                    v_old_is_active = (OLD.is_approved IS TRUE AND OLD.is_disabled IS FALSE AND OLD.is_banned IS FALSE);
                    v_new_is_active = (NEW.is_approved IS TRUE AND NEW.is_disabled IS FALSE AND NEW.is_banned IS FALSE);

                    -- Only check if transitioning from active to inactive
                    IF (v_old_is_active IS TRUE AND v_new_is_active IS NOT TRUE) THEN
                        -- Check if user is in the hierarchy for this entity
                        SELECT EXISTS (
                            SELECT 1
                            FROM agent_db_memberships_public.org_chart_edges e
                            WHERE e.entity_id = NEW.entity_id
                                AND (e.child_id = NEW.actor_id OR e.parent_id = NEW.actor_id)
                        ) INTO v_in_hierarchy;

                        IF (v_in_hierarchy) THEN
                            RAISE EXCEPTION 'HIERARCHY_MEMBER_IN_USE: Cannot deactivate user % - user must be removed from the organization hierarchy first',
                                NEW.actor_id;
                        END IF;
                    END IF;

                    RETURN NEW;
                END;
            
$_PGFN_$ LANGUAGE plpgsql VOLATILE SECURITY DEFINER;

